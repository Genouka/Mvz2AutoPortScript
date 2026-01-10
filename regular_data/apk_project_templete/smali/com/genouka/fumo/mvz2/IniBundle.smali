.class Lcom/genouka/fumo/mvz2/IniBundle;
.super Ljava/lang/Object;
.source "IniBundle.java"


# instance fields
.field m_android:Lorg/ini4j/Profile$Section;

.field m_bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/io/InputStream;)V
    .locals 5
    .param p1, "_bundle"    # Landroid/os/Bundle;
    .param p2, "_ini"    # Ljava/io/InputStream;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_bundle:Landroid/os/Bundle;

    .line 16
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    .line 18
    if-eqz p2, :cond_0

    .line 20
    :try_start_0
    new-instance v1, Lorg/ini4j/Ini;

    invoke-direct {v1, p2}, Lorg/ini4j/Ini;-><init>(Ljava/io/InputStream;)V

    .line 21
    .local v1, "ini":Lorg/ini4j/Ini;
    const-string v2, "Android"

    invoke-virtual {v1, v2}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ini4j/Profile$Section;

    iput-object v2, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v1    # "ini":Lorg/ini4j/Ini;
    :cond_0
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "_e":Ljava/io/IOException;
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INI exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    invoke-interface {v1, p1}, Lorg/ini4j/Profile$Section;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    invoke-interface {v1, p1}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 62
    :goto_0
    return v0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_bundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "ret":I
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    invoke-interface {v1, p1}, Lorg/ini4j/Profile$Section;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    invoke-interface {v1, p1}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    :goto_0
    return v0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_bundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    const v3, -0x96b43f

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "ret":Ljava/lang/String;
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    invoke-interface {v2, p1}, Lorg/ini4j/Profile$Section;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    invoke-interface {v2, p1}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 34
    .restart local v0    # "ret":Ljava/lang/String;
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_bundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 42
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_bundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 43
    .local v1, "tst":I
    if-eq v1, v3, :cond_0

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasAndroidIni()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    invoke-interface {v0, p1}, Lorg/ini4j/Profile$Section;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAndroidIni(Lorg/ini4j/Profile$Section;)V
    .locals 0
    .param p1, "ini"    # Lorg/ini4j/Profile$Section;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    .line 93
    return-void
.end method

.method public setAndroidInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_value"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "yoyo"

    const-string v1, "Could not setIniString - no INI file in current bundle."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/ini4j/Profile$Section;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public setAndroidString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_value"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    if-nez v0, :cond_0

    .line 99
    const-string v0, "yoyo"

    const-string v1, "Could not setIniString - no INI file in current bundle."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/IniBundle;->m_android:Lorg/ini4j/Profile$Section;

    invoke-interface {v0, p1, p2}, Lorg/ini4j/Profile$Section;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
