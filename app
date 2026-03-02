import { View, Text, Image, StyleSheet } from 'react-native';

export default function App() {
  const usuario = {
    nome: "André Nobrega",
    bio: "Gosto de f1 ",
    seguidores: "Aluno de ciência da computação, terceiro semestre",
      avatar: "https://s2-oglobo.glbimg.com/OKsP-5g2x_h8O4QTxy8O9FSGpXM=/0x0:6996x4665/888x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_da025474c0c44edd99332dddb09cabe8/internal_photos/bs/2024/S/9/SPqycoTpKzk6L9lzTl5A/105750359-files-mercedes-british-driver-lewis-hamilton-waves-on-the-podium-with-the-3rd-place-t.jpg",
    frase: "Eu não espero o futuro chegar — eu o construo linha por linha.",
  };
  return (
    <View style={styles.container}>
      {/* Avatar */}
      <Image
        source={{ uri: usuario.avatar }}
        style={styles.avatar}
      />
      {/* Nome */}
      <Text style={styles.nome}>{usuario.nome}</Text>
      {/* Bio */}
      <Text style={styles.bio}>{usuario.bio}</Text>
      {/* Stats */}
      <View style={styles.stats}>
      <Text style={styles.frase}>{usuario.frase}</Text>
      <Text style={styles.stat}>👥 {usuario.seguidores} seguidores</Text>
      </View>
    </View>
  );
}
const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#0a0a0a',
    padding: 20,
  },
  avatar: {
    width: 120,
    height: 120,
    borderRadius: 60,
    borderWidth: 3,
    borderColor: '#E1306C',
    marginBottom: 16,
  },
  nome: {
    fontSize: 22,
    fontWeight: 'bold',
    color: '#fff',
    marginBottom: 8,
  },
  bio: {
    fontSize: 14,
    color: '#aaa',
    textAlign: 'center',
    marginBottom: 16,
  },
  stats: {
    backgroundColor: '#1a1a1a',
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 20,
  },

  frase: {
    backgroundColor: '#1a1a1a',
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 20,
  },
  frase: {
    color: "#fff"
  }
  stat: {
    color: '#fff',
    fontSize: 14,
  },
});
