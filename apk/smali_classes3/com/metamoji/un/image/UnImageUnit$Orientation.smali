.class final enum Lcom/metamoji/un/image/UnImageUnit$Orientation;
.super Ljava/lang/Enum;
.source "UnImageUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/image/UnImageUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/image/UnImageUnit$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/image/UnImageUnit$Orientation;

.field public static final enum LANDSCAPE:Lcom/metamoji/un/image/UnImageUnit$Orientation;

.field public static final enum PORTRAIT:Lcom/metamoji/un/image/UnImageUnit$Orientation;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/image/UnImageUnit$Orientation;
    .locals 2

    .line 1122
    sget-object v0, Lcom/metamoji/un/image/UnImageUnit$Orientation;->LANDSCAPE:Lcom/metamoji/un/image/UnImageUnit$Orientation;

    sget-object v1, Lcom/metamoji/un/image/UnImageUnit$Orientation;->PORTRAIT:Lcom/metamoji/un/image/UnImageUnit$Orientation;

    filled-new-array {v0, v1}, [Lcom/metamoji/un/image/UnImageUnit$Orientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1123
    new-instance v0, Lcom/metamoji/un/image/UnImageUnit$Orientation;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/image/UnImageUnit$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/image/UnImageUnit$Orientation;->LANDSCAPE:Lcom/metamoji/un/image/UnImageUnit$Orientation;

    .line 1124
    new-instance v0, Lcom/metamoji/un/image/UnImageUnit$Orientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/image/UnImageUnit$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/image/UnImageUnit$Orientation;->PORTRAIT:Lcom/metamoji/un/image/UnImageUnit$Orientation;

    .line 1122
    invoke-static {}, Lcom/metamoji/un/image/UnImageUnit$Orientation;->$values()[Lcom/metamoji/un/image/UnImageUnit$Orientation;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/image/UnImageUnit$Orientation;->$VALUES:[Lcom/metamoji/un/image/UnImageUnit$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/image/UnImageUnit$Orientation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1122
    const-class v0, Lcom/metamoji/un/image/UnImageUnit$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/image/UnImageUnit$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/image/UnImageUnit$Orientation;
    .locals 1

    .line 1122
    sget-object v0, Lcom/metamoji/un/image/UnImageUnit$Orientation;->$VALUES:[Lcom/metamoji/un/image/UnImageUnit$Orientation;

    invoke-virtual {v0}, [Lcom/metamoji/un/image/UnImageUnit$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/image/UnImageUnit$Orientation;

    return-object v0
.end method
