.class public final enum Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;
.super Ljava/lang/Enum;
.source "DrUtPathUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrUtAddedPathType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

.field public static final enum DOUBLE_LINE_SEGMENTS:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

.field public static final enum QUAD_CURVE:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

.field public static final enum SINGLE_LINE_SEGMENT:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;
    .locals 4

    .line 24
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->NONE:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->QUAD_CURVE:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    sget-object v2, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->SINGLE_LINE_SEGMENT:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    sget-object v3, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->DOUBLE_LINE_SEGMENTS:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->NONE:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    .line 26
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    const-string v1, "QUAD_CURVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->QUAD_CURVE:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    .line 27
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    const-string v1, "SINGLE_LINE_SEGMENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->SINGLE_LINE_SEGMENT:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    .line 28
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    const-string v1, "DOUBLE_LINE_SEGMENTS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->DOUBLE_LINE_SEGMENTS:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    .line 24
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->$values()[Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->$VALUES:[Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 24
    const-class v0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;
    .locals 1

    .line 24
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->$VALUES:[Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    return-object v0
.end method
