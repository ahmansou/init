/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_countc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahmansou <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/12 14:40:52 by ahmansou          #+#    #+#             */
/*   Updated: 2019/04/12 15:31:47 by ahmansou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_countc(char *src, char c)
{
	int i;
	int cc;

	i = 0;
	cc = 0;
	while (src[i])
		if (src[i++] == c)
			cc++;
	return (cc);
}
