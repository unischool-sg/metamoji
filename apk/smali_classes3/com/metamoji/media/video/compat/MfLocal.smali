.class public final Lcom/metamoji/media/video/compat/MfLocal;
.super Ljava/lang/Object;
.source "MfLocal.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/compat/MfLocal$ModelDef;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001$B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\"\u001a\u0004\u0018\u00010#R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001d\u0010\u000c\u001a\u0004\u0018\u00010\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\r\u0010\u000bR\u001d\u0010\u0010\u001a\u0004\u0018\u00010\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000f\u001a\u0004\u0008\u0011\u0010\u000bR\u001d\u0010\u0013\u001a\u0004\u0018\u00010\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000f\u001a\u0004\u0008\u0014\u0010\u000bR\u001d\u0010\u0016\u001a\u0004\u0018\u00010\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u000f\u001a\u0004\u0008\u0017\u0010\u000bR\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u000f\u001a\u0004\u0008\u001a\u0010\u000bR\u001d\u0010\u001c\u001a\u0004\u0018\u00010\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u000f\u001a\u0004\u0008\u001d\u0010\u000bR\u001d\u0010\u001f\u001a\u0004\u0018\u00010\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u000f\u001a\u0004\u0008 \u0010\u000b\u00a8\u0006%"
    }
    d2 = {
        "Lcom/metamoji/media/video/compat/MfLocal;",
        "",
        "model",
        "Lcom/metamoji/df/model/IModel;",
        "localId",
        "",
        "<init>",
        "(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V",
        "getModel",
        "()Lcom/metamoji/df/model/IModel;",
        "getLocalId",
        "()Ljava/lang/String;",
        "uuid",
        "getUuid",
        "uuid$delegate",
        "Lkotlin/Lazy;",
        "filename",
        "getFilename",
        "filename$delegate",
        "serverId",
        "getServerId",
        "serverId$delegate",
        "serverName",
        "getServerName",
        "serverName$delegate",
        "timestamp",
        "getTimestamp",
        "timestamp$delegate",
        "title",
        "getTitle",
        "title$delegate",
        "comment",
        "getComment",
        "comment$delegate",
        "getFile",
        "Ljava/io/File;",
        "ModelDef",
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


# instance fields
.field private final comment$delegate:Lkotlin/Lazy;

.field private final filename$delegate:Lkotlin/Lazy;

.field private final localId:Ljava/lang/String;

.field private final model:Lcom/metamoji/df/model/IModel;

.field private final serverId$delegate:Lkotlin/Lazy;

.field private final serverName$delegate:Lkotlin/Lazy;

.field private final timestamp$delegate:Lkotlin/Lazy;

.field private final title$delegate:Lkotlin/Lazy;

.field private final uuid$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/compat/MfLocal;->model:Lcom/metamoji/df/model/IModel;

    iput-object p2, p0, Lcom/metamoji/media/video/compat/MfLocal;->localId:Ljava/lang/String;

    .line 27
    new-instance p1, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/compat/MfLocal;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/compat/MfLocal;->uuid$delegate:Lkotlin/Lazy;

    .line 28
    new-instance p1, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/media/video/compat/MfLocal;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/compat/MfLocal;->filename$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p1, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/media/video/compat/MfLocal;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/compat/MfLocal;->serverId$delegate:Lkotlin/Lazy;

    .line 30
    new-instance p1, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/media/video/compat/MfLocal;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/compat/MfLocal;->serverName$delegate:Lkotlin/Lazy;

    .line 31
    new-instance p1, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/media/video/compat/MfLocal;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/compat/MfLocal;->timestamp$delegate:Lkotlin/Lazy;

    .line 32
    new-instance p1, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/media/video/compat/MfLocal;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/compat/MfLocal;->title$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/compat/MfLocal$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/media/video/compat/MfLocal;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/compat/MfLocal;->comment$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final comment_delegate$lambda$6(Lcom/metamoji/media/video/compat/MfLocal;)Ljava/lang/String;
    .locals 1

    .line 33
    iget-object p0, p0, Lcom/metamoji/media/video/compat/MfLocal;->model:Lcom/metamoji/df/model/IModel;

    const-string v0, "comment"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final filename_delegate$lambda$1(Lcom/metamoji/media/video/compat/MfLocal;)Ljava/lang/String;
    .locals 1

    .line 28
    iget-object p0, p0, Lcom/metamoji/media/video/compat/MfLocal;->model:Lcom/metamoji/df/model/IModel;

    const-string v0, "fileName"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final serverId_delegate$lambda$2(Lcom/metamoji/media/video/compat/MfLocal;)Ljava/lang/String;
    .locals 1

    .line 29
    iget-object p0, p0, Lcom/metamoji/media/video/compat/MfLocal;->model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v0, "serverID"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final serverName_delegate$lambda$3(Lcom/metamoji/media/video/compat/MfLocal;)Ljava/lang/String;
    .locals 1

    .line 30
    iget-object p0, p0, Lcom/metamoji/media/video/compat/MfLocal;->model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v0, "serverName"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final timestamp_delegate$lambda$4(Lcom/metamoji/media/video/compat/MfLocal;)Ljava/lang/String;
    .locals 1

    .line 31
    iget-object p0, p0, Lcom/metamoji/media/video/compat/MfLocal;->model:Lcom/metamoji/df/model/IModel;

    const-string v0, "creationDate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final title_delegate$lambda$5(Lcom/metamoji/media/video/compat/MfLocal;)Ljava/lang/String;
    .locals 1

    .line 32
    iget-object p0, p0, Lcom/metamoji/media/video/compat/MfLocal;->model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v0, "title"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final uuid_delegate$lambda$0(Lcom/metamoji/media/video/compat/MfLocal;)Ljava/lang/String;
    .locals 1

    .line 27
    iget-object p0, p0, Lcom/metamoji/media/video/compat/MfLocal;->model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v0, "uuid"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfLocal;->comment$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfLocal;->filename$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfLocal;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfLocal;->model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfLocal;->serverId$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfLocal;->serverName$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfLocal;->timestamp$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfLocal;->title$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfLocal;->uuid$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
