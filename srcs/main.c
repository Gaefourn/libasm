/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gaefourn <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/10 01:50:31 by gaefourn          #+#    #+#             */
/*   Updated: 2020/02/26 19:25:57 by gaefourn         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#include "main.h"

int	main(void)
{
	int			fd;
	char		buf[4096];
	int			ret;
	char		*str;
	static char	test[9] = "Bonjour.\n";

	if (!(str = malloc(sizeof(char) * (ft_strlen(test) + 1))))
		return (0);
	str = ft_strcpy(str, test);
	printf("==========\nstrcpy : %s==========\n", str);
	printf("strdup : %s==========\n", ft_strdup(test));
	fd = open("srcs/main.c", O_RDONLY);
	while ((ret = ft_read(fd, buf, 4096)) > 0)
		ft_write(1, buf, ret);
	printf("%d\n", ft_strcmp("haha", "hahu"));
	printf("%d\n", strcmp("haha", "hahu"));
	return (0);
}
