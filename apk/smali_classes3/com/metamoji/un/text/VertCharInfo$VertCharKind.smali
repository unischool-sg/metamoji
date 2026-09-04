.class public final enum Lcom/metamoji/un/text/VertCharInfo$VertCharKind;
.super Ljava/lang/Enum;
.source "VertCharInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/VertCharInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VertCharKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/VertCharInfo$VertCharKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

.field public static final enum kutouTen:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

.field public static final enum rotateHan:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

.field public static final enum rotateZen:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

.field public static final enum tab:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

.field public static final enum yousokuOn:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/VertCharInfo$VertCharKind;
    .locals 5

    .line 10
    sget-object v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->rotateHan:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    sget-object v1, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->rotateZen:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    sget-object v2, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->yousokuOn:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    sget-object v3, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->kutouTen:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    sget-object v4, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->tab:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    const-string/jumbo v1, "rotateHan"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->rotateHan:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    .line 12
    new-instance v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    const-string/jumbo v1, "rotateZen"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->rotateZen:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    .line 13
    new-instance v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    const-string/jumbo v1, "yousokuOn"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->yousokuOn:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    .line 14
    new-instance v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    const-string v1, "kutouTen"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->kutouTen:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    .line 15
    new-instance v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    const-string/jumbo v1, "tab"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->tab:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    .line 10
    invoke-static {}, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->$values()[Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->$VALUES:[Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/VertCharInfo$VertCharKind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 10
    const-class v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/VertCharInfo$VertCharKind;
    .locals 1

    .line 10
    sget-object v0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->$VALUES:[Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    return-object v0
.end method
