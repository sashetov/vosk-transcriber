import asyncio
import glob
import subprocess

async def process_file(wav_file):
    srt_file = wav_file.replace('.wav', '.srt')
    cmd = f"python3 vosk-api/python/example/test_srt.py {wav_file} > {srt_file}"
    process = await asyncio.create_subprocess_shell(cmd, stdout=asyncio.subprocess.PIPE, stderr=asyncio.subprocess.PIPE)
    await process.communicate()

async def main():
    tasks = [process_file(f) for f in glob.glob("*.wav")]
    await asyncio.gather(*tasks)

if __name__ == "__main__":
    asyncio.run(main())
