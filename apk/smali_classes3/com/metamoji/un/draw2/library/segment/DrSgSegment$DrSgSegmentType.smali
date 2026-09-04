.class public final enum Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;
.super Ljava/lang/Enum;
.source "DrSgSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/segment/DrSgSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrSgSegmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

.field public static final enum CURVE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

.field public static final enum ELLIPSE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

.field public static final enum LINE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;
    .locals 4

    .line 40
    sget-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->NONE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    sget-object v1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->LINE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    sget-object v2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->CURVE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    sget-object v3, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ELLIPSE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->NONE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 42
    new-instance v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    const-string v1, "LINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->LINE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 43
    new-instance v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    const-string v1, "CURVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->CURVE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 44
    new-instance v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    const-string v1, "ELLIPSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ELLIPSE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 40
    invoke-static {}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->$values()[Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->$VALUES:[Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    const-class v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;
    .locals 1

    .line 40
    sget-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->$VALUES:[Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    return-object v0
.end method
