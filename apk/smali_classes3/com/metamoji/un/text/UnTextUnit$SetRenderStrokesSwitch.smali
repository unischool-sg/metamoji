.class final enum Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;
.super Ljava/lang/Enum;
.source "UnTextUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SetRenderStrokesSwitch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

.field public static final enum OFF:Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

.field public static final enum ON:Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

.field public static final enum TOGGLE:Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;
    .locals 3

    .line 8074
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;->TOGGLE:Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    sget-object v1, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;->OFF:Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    sget-object v2, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;->ON:Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8075
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    const-string v1, "TOGGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;->TOGGLE:Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    .line 8076
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    const-string v1, "OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;->OFF:Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    .line 8077
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    const-string v1, "ON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;->ON:Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    .line 8074
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;->$values()[Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;->$VALUES:[Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

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

    .line 8074
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 8074
    const-class v0, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;
    .locals 1

    .line 8074
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;->$VALUES:[Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/UnTextUnit$SetRenderStrokesSwitch;

    return-object v0
.end method
