.class public final Lcom/metamoji/media/video/compat/MfRecordConverter;
.super Ljava/lang/Object;
.source "MfRecordConverter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/media/video/compat/MfRecordConverter;",
        "",
        "<init>",
        "()V",
        "convertIfNeeds",
        "",
        "model",
        "Lcom/metamoji/df/model/IModel;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/metamoji/media/video/compat/MfRecordConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/media/video/compat/MfRecordConverter;

    invoke-direct {v0}, Lcom/metamoji/media/video/compat/MfRecordConverter;-><init>()V

    sput-object v0, Lcom/metamoji/media/video/compat/MfRecordConverter;->INSTANCE:Lcom/metamoji/media/video/compat/MfRecordConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertIfNeeds(Lcom/metamoji/df/model/IModel;)Z
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "model"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const-string v1, "mediafiles"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 11
    :cond_0
    sget-object v4, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v4}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v5

    if-nez v5, :cond_1

    return v3

    .line 12
    :cond_1
    sget-object v4, Lcom/metamoji/media/video/compat/MfLocalConverter;->Companion:Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;

    invoke-virtual {v4}, Lcom/metamoji/media/video/compat/MfLocalConverter$Companion;->getInstance()Lcom/metamoji/media/video/compat/MfLocalConverter;

    move-result-object v4

    if-nez v4, :cond_2

    return v3

    .line 17
    :cond_2
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v6

    .line 18
    new-instance v12, Lcom/metamoji/media/video/compat/MfKarma;

    invoke-direct {v12, v0}, Lcom/metamoji/media/video/compat/MfKarma;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 20
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 21
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x21

    if-ne v7, v8, :cond_4

    goto :goto_0

    .line 26
    :cond_4
    invoke-interface {v2, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_0

    .line 27
    :cond_5
    new-instance v14, Lcom/metamoji/media/video/compat/MfRecord;

    invoke-direct {v14, v7, v6}, Lcom/metamoji/media/video/compat/MfRecord;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v14}, Lcom/metamoji/media/video/compat/MfRecord;->getLocalId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/metamoji/media/video/compat/MfLocalConverter;->find(Ljava/lang/String;)Lcom/metamoji/media/video/compat/MfLocal;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 43
    invoke-virtual {v15}, Lcom/metamoji/media/video/compat/MfLocal;->getFile()Ljava/io/File;

    move-result-object v6

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_1
    move-object v7, v6

    if-eqz v15, :cond_9

    if-eqz v7, :cond_9

    .line 45
    invoke-virtual {v14}, Lcom/metamoji/media/video/compat/MfRecord;->getServerId()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v14}, Lcom/metamoji/media/video/compat/MfRecord;->getServerId()Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object v9, v6

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {v15}, Lcom/metamoji/media/video/compat/MfLocal;->getServerId()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 46
    :goto_4
    invoke-virtual {v14}, Lcom/metamoji/media/video/compat/MfRecord;->getTicket()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    invoke-virtual {v8}, Lcom/metamoji/media/video/network/VfCloud$Companion;->getOwnerAccount()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/metamoji/media/video/uploader/VfUploader;->register(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 47
    invoke-virtual {v15}, Lcom/metamoji/media/video/compat/MfLocal;->getLocalId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/metamoji/media/video/compat/MfLocalConverter;->delete(Ljava/lang/String;)V

    .line 49
    :cond_9
    invoke-virtual {v14}, Lcom/metamoji/media/video/compat/MfRecord;->getServerId()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_a

    goto :goto_0

    .line 53
    :cond_a
    invoke-virtual {v14}, Lcom/metamoji/media/video/compat/MfRecord;->getTicket()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/metamoji/media/video/compat/MfRecord;->getServerId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12, v6, v7}, Lcom/metamoji/media/video/compat/MfKarma;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 57
    :cond_b
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
