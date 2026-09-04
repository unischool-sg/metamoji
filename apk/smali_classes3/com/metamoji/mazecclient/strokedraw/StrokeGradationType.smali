.class public final enum Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;
.super Ljava/lang/Enum;
.source "StrokeGradationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;

.field public static final enum Linear:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;
    .locals 1

    .line 3
    sget-object v0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;->Linear:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;

    filled-new-array {v0}, [Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;

    const-string v1, "Linear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;->Linear:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;

    .line 3
    invoke-static {}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;->$values()[Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;->$VALUES:[Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;
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
    const-class v0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;
    .locals 1

    .line 3
    sget-object v0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;->$VALUES:[Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;

    invoke-virtual {v0}, [Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/mazecclient/strokedraw/StrokeGradationType;

    return-object v0
.end method
