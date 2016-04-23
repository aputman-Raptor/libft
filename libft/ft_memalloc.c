/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memalloc.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aputman <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/12/02 14:53:31 by aputman           #+#    #+#             */
/*   Updated: 2015/12/11 19:14:35 by aputman          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memalloc(size_t size)
{
	void	*zone;
	
	if (!(zone = (void *)malloc(sizeof(void) * size)))
		return (NULL);
	zone = ft_memset(zone, 0, size);
	return (zone);
}
