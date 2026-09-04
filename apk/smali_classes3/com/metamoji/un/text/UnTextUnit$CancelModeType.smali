.class final enum Lcom/metamoji/un/text/UnTextUnit$CancelModeType;
.super Ljava/lang/Enum;
.source "UnTextUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CancelModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/UnTextUnit$CancelModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

.field public static final enum Menu:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

.field public static final enum MenuAndStrokeReedit:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/UnTextUnit$CancelModeType;
    .locals 2

    .line 7604
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->Menu:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    sget-object v1, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->MenuAndStrokeReedit:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    filled-new-array {v0, v1}, [Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7605
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    const-string v1, "Menu"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->Menu:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    .line 7606
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    const-string v1, "MenuAndStrokeReedit"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->MenuAndStrokeReedit:Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    .line 7604
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->$values()[Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->$VALUES:[Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

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

    .line 7604
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/UnTextUnit$CancelModeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 7604
    const-class v0, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/UnTextUnit$CancelModeType;
    .locals 1

    .line 7604
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->$VALUES:[Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/UnTextUnit$CancelModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/UnTextUnit$CancelModeType;

    return-object v0
.end method
