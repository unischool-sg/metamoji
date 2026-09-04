.class public final Lcom/metamoji/li/driver/LoginError;
.super Ljava/lang/Object;
.source "LoginError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/driver/LoginError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u001d\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0008B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\tJ\u0008\u0010\u000e\u001a\u00020\u0005H\u0016J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/li/driver/LoginError;",
        "",
        "response",
        "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
        "message",
        "",
        "<init>",
        "(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/String;)V",
        "(Ljava/lang/String;)V",
        "(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V",
        "getResponse",
        "()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
        "getMessage",
        "()Ljava/lang/String;",
        "toString",
        "resolveMessage",
        "Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/li/driver/LoginError$Companion;


# instance fields
.field private final message:Ljava/lang/String;

.field private final response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/driver/LoginError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/driver/LoginError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/driver/LoginError;->Companion:Lcom/metamoji/li/driver/LoginError$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/metamoji/li/driver/LoginError;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/metamoji/li/driver/LoginError;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 11
    iput-object p2, p0, Lcom/metamoji/li/driver/LoginError;->message:Ljava/lang/String;

    .line 16
    sget-object p1, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {p1}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, p1}, Lcom/metamoji/li/driver/LoginError;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/metamoji/li/driver/LoginError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponse()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/metamoji/li/driver/LoginError;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object v0
.end method

.method public final resolveMessage()Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/metamoji/li/driver/LoginError;->message:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    iget-object v2, p0, Lcom/metamoji/li/driver/LoginError;->message:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;-><init>(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/li/driver/LoginError;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 37
    sget-object v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx;->INSTANCE:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx;

    iget-object v1, p0, Lcom/metamoji/li/driver/LoginError;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx;->resolveCabinetUserErrorMessage(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/metamoji/li/driver/LoginError;->message:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/metamoji/li/driver/LoginError;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorMessage:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/metamoji/li/driver/LoginError;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-eqz v2, :cond_3

    iget v2, v2, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v2, "0"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
