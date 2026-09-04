.class public final Lcom/metamoji/media/video/VfCabinetUserInfoSettings;
.super Ljava/lang/Object;
.source "VfEditionDef.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\tJ\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfCabinetUserInfoSettings;",
        "",
        "value",
        "Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;",
        "<init>",
        "(Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;)V",
        "getValue",
        "()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;",
        "getUserInfo",
        "Lcom/metamoji/media/video/VfCabinetUserInfo;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field public static final Companion:Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;


# instance fields
.field private final value:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->Companion:Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/media/video/VfCabinetUserInfoSettings;Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;ILjava/lang/Object;)Lcom/metamoji/media/video/VfCabinetUserInfoSettings;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->copy(Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;)Lcom/metamoji/media/video/VfCabinetUserInfoSettings;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstanceFromSystemSettings()Lcom/metamoji/media/video/VfCabinetUserInfoSettings;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->Companion:Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;->getInstanceFromSystemSettings()Lcom/metamoji/media/video/VfCabinetUserInfoSettings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    return-object v0
.end method

.method public final copy(Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;)Lcom/metamoji/media/video/VfCabinetUserInfoSettings;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;

    invoke-direct {v0, p1}, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;-><init>(Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;

    iget-object v1, p0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    iget-object p1, p1, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getUserInfo()Lcom/metamoji/media/video/VfCabinetUserInfo;
    .locals 3

    .line 93
    new-instance v0, Lcom/metamoji/media/video/VfCabinetUserInfo;

    iget-object v1, p0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    const-string v2, "getUserInfo(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/VfCabinetUserInfo;-><init>(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    return-object v0
.end method

.method public final getValue()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->value:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VfCabinetUserInfoSettings(value="

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
