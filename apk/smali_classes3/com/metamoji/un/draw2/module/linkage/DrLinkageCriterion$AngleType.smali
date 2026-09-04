.class public final enum Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;
.super Ljava/lang/Enum;
.source "DrLinkageCriterion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AngleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

.field public static final enum ARROW:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

.field public static final enum ELEMENT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

.field public static final enum SEGMENT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;
    .locals 4

    .line 38
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    sget-object v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ELEMENT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    sget-object v2, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->SEGMENT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    sget-object v3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ARROW:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    .line 40
    new-instance v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    const-string v1, "ELEMENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ELEMENT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    .line 41
    new-instance v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    const-string v1, "SEGMENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->SEGMENT:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    .line 42
    new-instance v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    const-string v1, "ARROW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ARROW:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    .line 38
    invoke-static {}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->$values()[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->$VALUES:[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    const-class v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;
    .locals 1

    .line 38
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->$VALUES:[Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    return-object v0
.end method
