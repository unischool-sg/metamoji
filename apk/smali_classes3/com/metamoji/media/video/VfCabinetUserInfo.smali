.class public final Lcom/metamoji/media/video/VfCabinetUserInfo;
.super Ljava/lang/Object;
.source "VfEditionDef.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0007H\u00d6\u0001R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfCabinetUserInfo;",
        "",
        "value",
        "Lcom/metamoji/cs/dc/user/CsDCUserInfo;",
        "<init>",
        "(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V",
        "userId",
        "",
        "loginedPassword",
        "loginedQwd",
        "isOnPremise",
        "",
        "loginName",
        "coLoginId",
        "companyId",
        "restHost",
        "accessToken",
        "refreshToken",
        "localDeviceId",
        "component1",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field public accessToken:Ljava/lang/String;

.field public coLoginId:Ljava/lang/String;

.field public companyId:Ljava/lang/String;

.field public isOnPremise:Z

.field public loginName:Ljava/lang/String;

.field public final loginedPassword:Ljava/lang/String;

.field public final loginedQwd:Ljava/lang/String;

.field public refreshToken:Ljava/lang/String;

.field public restHost:Ljava/lang/String;

.field public final userId:Ljava/lang/String;

.field public final value:Lcom/metamoji/cs/dc/user/CsDCUserInfo;


# direct methods
.method public constructor <init>(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    .line 58
    iget-object v0, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->userId:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->loginedPassword:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->loginedQwd:Ljava/lang/String;

    .line 64
    iget-boolean v0, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    iput-boolean v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->isOnPremise:Z

    .line 66
    iget-object v0, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->loginName:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->coLoginId:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->companyId:Ljava/lang/String;

    .line 72
    iget-object p1, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->restHost:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/media/video/VfCabinetUserInfo;Lcom/metamoji/cs/dc/user/CsDCUserInfo;ILjava/lang/Object;)Lcom/metamoji/media/video/VfCabinetUserInfo;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/VfCabinetUserInfo;->copy(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Lcom/metamoji/media/video/VfCabinetUserInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/metamoji/cs/dc/user/CsDCUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-object v0
.end method

.method public final copy(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Lcom/metamoji/media/video/VfCabinetUserInfo;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/media/video/VfCabinetUserInfo;

    invoke-direct {v0, p1}, Lcom/metamoji/media/video/VfCabinetUserInfo;-><init>(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/media/video/VfCabinetUserInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/media/video/VfCabinetUserInfo;

    iget-object v1, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object p1, p1, Lcom/metamoji/media/video/VfCabinetUserInfo;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->hashCode()I

    move-result v0

    return v0
.end method

.method public final localDeviceId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfo;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VfCabinetUserInfo(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
