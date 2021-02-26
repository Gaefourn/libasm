/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gaefourn <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/10 01:55:42 by gaefourn          #+#    #+#             */
/*   Updated: 2020/02/26 19:31:25 by gaefourn         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MAIN_H
# define MAIN_H
# include <stdlib.h>

extern ssize_t		ft_write(int fd, void *buf, size_t count);
extern size_t		ft_strlen(char *str);
extern ssize_t		ft_read(int fd, void *buf, size_t count);
extern char			*ft_strcpy(char *dst, char *src);
extern int			ft_strcmp(char *s1, char *s2);
extern char			*ft_strdup(char *str);

#endif
