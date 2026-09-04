.class public final enum Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;
.super Ljava/lang/Enum;
.source "LoginQRCodeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/view/panel/LoginQRCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScanType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getCode",
        "()I",
        "Straight",
        "Inverted",
        "Mixed",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

.field public static final enum Inverted:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

.field public static final enum Mixed:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

.field public static final enum Straight:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;
    .locals 3

    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->Straight:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    sget-object v1, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->Inverted:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    sget-object v2, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->Mixed:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    const-string v1, "Straight"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->Straight:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    .line 55
    new-instance v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    const-string v1, "Inverted"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->Inverted:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    .line 56
    new-instance v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    const-string v1, "Mixed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->Mixed:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    invoke-static {}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->$values()[Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->$VALUES:[Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->code:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;
    .locals 1

    const-class v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;
    .locals 1

    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->$VALUES:[Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->code:I

    return v0
.end method
