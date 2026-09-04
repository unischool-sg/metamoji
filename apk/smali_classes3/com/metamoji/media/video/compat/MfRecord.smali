.class public final Lcom/metamoji/media/video/compat/MfRecord;
.super Ljava/lang/Object;
.source "MfRecord.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/compat/MfRecord$Companion;,
        Lcom/metamoji/media/video/compat/MfRecord$ModelDef;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0018\u0000 \u00102\u00020\u0001:\u0002\u0010\u0011B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\tR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/media/video/compat/MfRecord;",
        "",
        "model",
        "Lcom/metamoji/df/model/IModel;",
        "ticket",
        "",
        "<init>",
        "(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V",
        "getTicket",
        "()Ljava/lang/String;",
        "serverId",
        "getServerId",
        "serverName",
        "getServerName",
        "localId",
        "getLocalId",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/media/video/compat/MfRecord$Companion;

.field public static final MODELTYPE:Ljava/lang/String; = "mediafiles"


# instance fields
.field private final model:Lcom/metamoji/df/model/IModel;

.field private final ticket:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/compat/MfRecord$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/compat/MfRecord$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/compat/MfRecord;->Companion:Lcom/metamoji/media/video/compat/MfRecord$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ticket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/compat/MfRecord;->model:Lcom/metamoji/df/model/IModel;

    iput-object p2, p0, Lcom/metamoji/media/video/compat/MfRecord;->ticket:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getLocalId()Ljava/lang/String;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfRecord;->model:Lcom/metamoji/df/model/IModel;

    const-string v1, "localID"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfRecord;->model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "serverID"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getServerName()Ljava/lang/String;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfRecord;->model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "serverName"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTicket()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfRecord;->ticket:Ljava/lang/String;

    return-object v0
.end method
