.class public final enum Lio/github/toyota32k/utils/android/ActivityOrientation;
.super Ljava/lang/Enum;
.source "ActivityExt.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/toyota32k/utils/android/ActivityOrientation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/ActivityOrientation;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "AUTO",
        "LANDSCAPE",
        "PORTRAIT",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/github/toyota32k/utils/android/ActivityOrientation;

.field public static final enum AUTO:Lio/github/toyota32k/utils/android/ActivityOrientation;

.field public static final enum LANDSCAPE:Lio/github/toyota32k/utils/android/ActivityOrientation;

.field public static final enum PORTRAIT:Lio/github/toyota32k/utils/android/ActivityOrientation;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lio/github/toyota32k/utils/android/ActivityOrientation;
    .locals 3

    sget-object v0, Lio/github/toyota32k/utils/android/ActivityOrientation;->AUTO:Lio/github/toyota32k/utils/android/ActivityOrientation;

    sget-object v1, Lio/github/toyota32k/utils/android/ActivityOrientation;->LANDSCAPE:Lio/github/toyota32k/utils/android/ActivityOrientation;

    sget-object v2, Lio/github/toyota32k/utils/android/ActivityOrientation;->PORTRAIT:Lio/github/toyota32k/utils/android/ActivityOrientation;

    filled-new-array {v0, v1, v2}, [Lio/github/toyota32k/utils/android/ActivityOrientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 66
    new-instance v0, Lio/github/toyota32k/utils/android/ActivityOrientation;

    const/4 v1, -0x1

    const-string v2, "AUTO"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/github/toyota32k/utils/android/ActivityOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/github/toyota32k/utils/android/ActivityOrientation;->AUTO:Lio/github/toyota32k/utils/android/ActivityOrientation;

    .line 67
    new-instance v0, Lio/github/toyota32k/utils/android/ActivityOrientation;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/github/toyota32k/utils/android/ActivityOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/github/toyota32k/utils/android/ActivityOrientation;->LANDSCAPE:Lio/github/toyota32k/utils/android/ActivityOrientation;

    .line 68
    new-instance v0, Lio/github/toyota32k/utils/android/ActivityOrientation;

    const-string v1, "PORTRAIT"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lio/github/toyota32k/utils/android/ActivityOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/github/toyota32k/utils/android/ActivityOrientation;->PORTRAIT:Lio/github/toyota32k/utils/android/ActivityOrientation;

    invoke-static {}, Lio/github/toyota32k/utils/android/ActivityOrientation;->$values()[Lio/github/toyota32k/utils/android/ActivityOrientation;

    move-result-object v0

    sput-object v0, Lio/github/toyota32k/utils/android/ActivityOrientation;->$VALUES:[Lio/github/toyota32k/utils/android/ActivityOrientation;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/github/toyota32k/utils/android/ActivityOrientation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/github/toyota32k/utils/android/ActivityOrientation;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/github/toyota32k/utils/android/ActivityOrientation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/github/toyota32k/utils/android/ActivityOrientation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/toyota32k/utils/android/ActivityOrientation;
    .locals 1

    const-class v0, Lio/github/toyota32k/utils/android/ActivityOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/toyota32k/utils/android/ActivityOrientation;

    return-object p0
.end method

.method public static values()[Lio/github/toyota32k/utils/android/ActivityOrientation;
    .locals 1

    sget-object v0, Lio/github/toyota32k/utils/android/ActivityOrientation;->$VALUES:[Lio/github/toyota32k/utils/android/ActivityOrientation;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/toyota32k/utils/android/ActivityOrientation;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 65
    iget v0, p0, Lio/github/toyota32k/utils/android/ActivityOrientation;->value:I

    return v0
.end method
