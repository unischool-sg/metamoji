.class public final enum Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;
.super Ljava/lang/Enum;
.source "DrUnTaggableObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

.field public static final enum ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

.field public static final enum GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

.field public static final enum UNKNOWN:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;
    .locals 3

    .line 19
    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->UNKNOWN:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    sget-object v1, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    sget-object v2, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->UNKNOWN:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 21
    new-instance v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    const-string v1, "ELEMENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 22
    new-instance v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    const-string v1, "GROUP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 19
    invoke-static {}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->$values()[Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->$VALUES:[Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 19
    const-class v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->$VALUES:[Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    return-object v0
.end method
