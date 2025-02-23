using UnityEngine;

namespace _PapayaKit.Papaya.Scripts.Tournament_Lock
{
	public class TooltipAnimationEventsHandler : MonoBehaviour
	{
		public delegate void TooltipAnimationEvent(bool isShow);
		private TooltipAnimationEvent _doOnEvent;

		public void Init(TooltipAnimationEvent doOnEvent)
		{
			_doOnEvent = doOnEvent;
		}

		// called by an animation event
		public void TooltipShowEvent() => TrackTooltipAnimation(true);

		// called by an animation event
		public void TooltipHideEvent() => TrackTooltipAnimation(false);

		private void TrackTooltipAnimation(bool isShow) => _doOnEvent?.Invoke(isShow);
	}
}
