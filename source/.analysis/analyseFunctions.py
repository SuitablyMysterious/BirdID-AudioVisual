from birdnet.models import ModelV2M4
from pathlib import Path

# Crate model instance
currentModel = ModelV2M4()

def analyseAudio(path,latitude,longitude,week):
    species_in_area = model.predict_species_at_location_and_time(latitude,longitude,week)
    predictions = model.predict_species_within_audio_file(
        Path(path),
        filter_species=set(species_in_area.keys())
    )
    prediction, confidence = list(predictions[(0.0, 3.0)].items())[0]
    return prediction, confidence
