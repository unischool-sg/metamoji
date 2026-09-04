.class Lcom/metamoji/nt/NtMazecImsManager$17;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Lcom/metamoji/nt/NtMazecImsManager$IUserDataStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->getUserDataStore()Lcom/metamoji/nt/NtMazecImsManager$IUserDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMazecImsManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 848
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$17;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backup()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    invoke-virtual {p0}, Lcom/metamoji/nt/NtMazecImsManager$17;->getUserDataFiles()Ljava/util/SortedMap;

    move-result-object v0

    .line 904
    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 908
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 909
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 911
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mazec-user-data%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    .line 909
    invoke-static {v1, v2, v3}, Lcom/metamoji/mazec/util/FileUtil;->createTempFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 914
    invoke-static {v1, v0, v2}, Lcom/metamoji/mazec/util/ZipUtil;->zip(Landroid/content/Context;Ljava/util/SortedMap;Ljava/io/File;)V

    return-object v2
.end method

.method public clear()V
    .locals 2

    .line 894
    invoke-virtual {p0}, Lcom/metamoji/nt/NtMazecImsManager$17;->getUserDataFiles()Ljava/util/SortedMap;

    move-result-object v0

    .line 895
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 896
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$17;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$fget_ims(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->resetUserData()V

    return-void
.end method

.method getUserDataFiles()Ljava/util/SortedMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 854
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 855
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 857
    invoke-static {}, Lcom/metamoji/mazec/MazecConfig;->getConversionUserDictionaryAvailableLanguages()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "%s/%s"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 858
    invoke-static {v1, v3}, Lcom/metamoji/mazec/MazecConfig;->getConversionUserDictionary(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 859
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 860
    const-string/jumbo v6, "user-%s.dic"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 864
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "user-dic"

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 861
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 860
    invoke-interface {v0, v3, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 869
    :cond_1
    sget-object v2, Lcom/metamoji/mazec/MazecConfig;->RECOG_LEARN_ENABLE_LOCALES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 870
    invoke-static {v1, v6}, Lcom/metamoji/mazec/MazecConfig;->getRecognitionImplicitLearningDictionary(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 871
    const-string/jumbo v8, "user-recog"

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 872
    const-string v9, "%s_psw_impl.res"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v10

    .line 876
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 873
    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 872
    invoke-interface {v0, v9, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    :cond_2
    invoke-static {v1, v6}, Lcom/metamoji/mazec/MazecConfig;->getRecognitionExplicitLearningDictionary(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 880
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 881
    const-string v9, "%s_psw_expl.res"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 885
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v8, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 882
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 881
    invoke-interface {v0, v6, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public restore(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 922
    invoke-static {v0, p1}, Lcom/metamoji/mazec/util/ZipUtil;->unzip(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 923
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 924
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 928
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 929
    const-string/jumbo v5, "user-dic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 930
    invoke-virtual {p0, v0, v3}, Lcom/metamoji/nt/NtMazecImsManager$17;->restoreConversionDics(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_1

    .line 934
    :cond_1
    const-string/jumbo v5, "user-recog"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 935
    invoke-virtual {p0, v0, v3}, Lcom/metamoji/nt/NtMazecImsManager$17;->restoreRecognitionDics(Landroid/content/Context;Ljava/io/File;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 939
    :cond_3
    iget-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$17;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-static {p1}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$fget_ims(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->resetUserData()V

    return-void
.end method

.method restoreConversionDics(Landroid/content/Context;Ljava/io/File;)V
    .locals 7

    .line 943
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    .line 944
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 948
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    .line 949
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 954
    :cond_1
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 956
    const-string v5, "-"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 957
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    goto :goto_1

    .line 961
    :cond_2
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    .line 962
    invoke-static {p1, v4}, Lcom/metamoji/mazec/MazecConfig;->getConversionUserDictionary(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 967
    :cond_3
    invoke-static {p1, v3, v4}, Lcom/metamoji/mazec/util/FileUtil;->move(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method restoreRecognitionDics(Landroid/content/Context;Ljava/io/File;)V
    .locals 9

    .line 972
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p2, v2

    .line 973
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 977
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    .line 978
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_2

    .line 983
    :cond_1
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 985
    const-string v5, "_"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 986
    array-length v5, v4

    const/4 v6, 0x4

    if-ge v5, v6, :cond_2

    goto :goto_2

    .line 990
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v4, v1

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 993
    aget-object v7, v4, v6

    const-string v8, "impl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 994
    invoke-static {p1, v5}, Lcom/metamoji/mazec/MazecConfig;->getRecognitionImplicitLearningDictionary(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    goto :goto_1

    .line 995
    :cond_3
    aget-object v4, v4, v6

    const-string v6, "expl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 996
    invoke-static {p1, v5}, Lcom/metamoji/mazec/MazecConfig;->getRecognitionExplicitLearningDictionary(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_5

    goto :goto_2

    .line 1003
    :cond_5
    invoke-static {p1, v3, v4}, Lcom/metamoji/mazec/util/FileUtil;->move(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
