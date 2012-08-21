"
function acp#css#meetsForOmni(context)
  if g:acp_behaviorCssOmniPropertyLength >= 0 &&
        \ a:context =~ '\(^\s\|[;{]\)\s*\k\{' .
        \              g:acp_behaviorCssOmniPropertyLength . ',}$'
    return 1
  endif
  if g:acp_behaviorCssOmniValueLength >= 0 &&
        \ a:context =~ '[:@!]\s*\k\{' .
        \              g:acp_behaviorCssOmniValueLength . ',}$'
    return 1
  endif
  return 0
endfunction

function acp#css#makeBehavior()
	let behavs = acp#behav#defaults('css')
	"---------------------------------------------------------------------------
	call add(behavs.css, {
				\   'command' : "\<C-x>\<C-o>",
				\   'meets'   : 'acp#css#meetsForOmni',
				\   'repeat'  : 0,
				\ })
	return behavs
endfunction

