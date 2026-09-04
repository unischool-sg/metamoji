.class public final enum Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;
.super Ljava/lang/Enum;
.source "LoginQRCodeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/view/panel/LoginQRCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionCheckState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Init",
        "Checking",
        "Grunted",
        "Denied",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

.field public static final enum Checking:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

.field public static final enum Denied:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

.field public static final enum Grunted:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

.field public static final enum Init:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;
    .locals 4

    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Init:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    sget-object v1, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Checking:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    sget-object v2, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Grunted:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    sget-object v3, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Denied:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    const-string v1, "Init"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Init:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    .line 72
    new-instance v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    const-string v1, "Checking"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Checking:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    .line 73
    new-instance v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    const-string v1, "Grunted"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Grunted:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    .line 74
    new-instance v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    const-string v1, "Denied"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Denied:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    invoke-static {}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->$values()[Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->$VALUES:[Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;
    .locals 1

    const-class v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;
    .locals 1

    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->$VALUES:[Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    return-object v0
.end method
