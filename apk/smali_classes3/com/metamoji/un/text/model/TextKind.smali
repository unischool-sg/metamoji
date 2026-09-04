.class public final enum Lcom/metamoji/un/text/model/TextKind;
.super Ljava/lang/Enum;
.source "TextKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/model/TextKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/model/TextKind;

.field public static final enum String:Lcom/metamoji/un/text/model/TextKind;

.field public static final enum Stroke:Lcom/metamoji/un/text/model/TextKind;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/model/TextKind;
    .locals 2

    .line 3
    sget-object v0, Lcom/metamoji/un/text/model/TextKind;->String:Lcom/metamoji/un/text/model/TextKind;

    sget-object v1, Lcom/metamoji/un/text/model/TextKind;->Stroke:Lcom/metamoji/un/text/model/TextKind;

    filled-new-array {v0, v1}, [Lcom/metamoji/un/text/model/TextKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/metamoji/un/text/model/TextKind;

    const-string v1, "String"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/model/TextKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/model/TextKind;->String:Lcom/metamoji/un/text/model/TextKind;

    .line 5
    new-instance v0, Lcom/metamoji/un/text/model/TextKind;

    const-string v1, "Stroke"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/model/TextKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/model/TextKind;->Stroke:Lcom/metamoji/un/text/model/TextKind;

    .line 3
    invoke-static {}, Lcom/metamoji/un/text/model/TextKind;->$values()[Lcom/metamoji/un/text/model/TextKind;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/model/TextKind;->$VALUES:[Lcom/metamoji/un/text/model/TextKind;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/model/TextKind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 3
    const-class v0, Lcom/metamoji/un/text/model/TextKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/model/TextKind;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/model/TextKind;
    .locals 1

    .line 3
    sget-object v0, Lcom/metamoji/un/text/model/TextKind;->$VALUES:[Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/model/TextKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/model/TextKind;

    return-object v0
.end method
