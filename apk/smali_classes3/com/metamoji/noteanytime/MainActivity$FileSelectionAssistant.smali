.class public Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileSelectionAssistant"
.end annotation


# instance fields
.field private mExt:[Ljava/lang/String;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2779
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->mExt:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 2780
    iput-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->mKey:Ljava/lang/String;

    .line 2781
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->initTypes(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 2789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2790
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->mExt:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 2791
    iput-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->mKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2792
    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->initTypes(Ljava/lang/String;)V

    return-void
.end method

.method private checkInitialDir(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2888
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2891
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 2892
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public static fromMimeType(Ljava/lang/String;)Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;
    .locals 1

    .line 2830
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "application/vnd.metamoji.atdoc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2834
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;

    invoke-static {p0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2832
    :cond_0
    new-instance p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getHayabusaDocExt()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method private initTypes(Ljava/lang/String;)V
    .locals 2

    .line 2796
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, ".atdoc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, ".txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, ".pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, ".m4a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, ".csv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, ".btshare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2819
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2816
    :pswitch_0
    const-string p1, "LastZipDir"

    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->mKey:Ljava/lang/String;

    return-void

    .line 2798
    :pswitch_1
    const-string p1, "LastPdfDir"

    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->mKey:Ljava/lang/String;

    return-void

    .line 2801
    :pswitch_2
    const-string p1, "LastAudioDir"

    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->mKey:Ljava/lang/String;

    return-void

    .line 2809
    :pswitch_3
    const-string p1, "LastJpegDir"

    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->mKey:Ljava/lang/String;

    return-void

    .line 2813
    :pswitch_4
    const-string p1, "LastTextDir"

    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->mKey:Ljava/lang/String;

    return-void

    .line 2805
    :pswitch_5
    const-string p1, "LastAtdocDir"

    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->mKey:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48efc921 -> :sswitch_8
        0x166b18 -> :sswitch_7
        0x1684f3 -> :sswitch_6
        0x1688ec -> :sswitch_5
        0x169a04 -> :sswitch_4
        0x16ab82 -> :sswitch_3
        0x16c033 -> :sswitch_2
        0x2ba1996 -> :sswitch_1
        0x540c14b7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getExtensions()[Ljava/lang/String;
    .locals 1

    .line 2844
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->mExt:[Ljava/lang/String;

    return-object v0
.end method

.method public getInitialDir()Ljava/io/File;
    .locals 3

    .line 2853
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 2854
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 2858
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2859
    invoke-direct {p0, v1}, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->checkInitialDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    return-object v1
.end method

.method public saveInitialDir(Ljava/io/File;)V
    .locals 2

    .line 2872
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->checkInitialDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2875
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
