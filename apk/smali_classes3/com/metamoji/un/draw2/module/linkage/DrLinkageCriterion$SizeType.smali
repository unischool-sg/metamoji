.class public final enum Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;
.super Ljava/lang/Enum;
.source "DrLinkageCriterion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SizeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

.field public static final enum ARROW_BOUNDS:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

.field public static final enum FRAME_RECT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

.field public static final enum PATH_BOUNDS:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;
    .locals 4

    .line 28
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    sget-object v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->PATH_BOUNDS:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    sget-object v2, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->FRAME_RECT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    sget-object v3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->ARROW_BOUNDS:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    .line 30
    new-instance v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    const-string v1, "PATH_BOUNDS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->PATH_BOUNDS:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    .line 31
    new-instance v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    const-string v1, "FRAME_RECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->FRAME_RECT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    .line 32
    new-instance v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    const-string v1, "ARROW_BOUNDS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->ARROW_BOUNDS:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    .line 28
    invoke-static {}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->$values()[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->$VALUES:[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    const-class v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;
    .locals 1

    .line 28
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->$VALUES:[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    return-object v0
.end method
