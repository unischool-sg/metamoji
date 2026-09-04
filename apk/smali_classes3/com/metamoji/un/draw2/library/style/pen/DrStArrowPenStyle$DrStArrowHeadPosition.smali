.class public final enum Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;
.super Ljava/lang/Enum;
.source "DrStArrowPenStyle.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrStArrowHeadPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;",
        ">;",
        "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

.field public static final enum BOTH:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

.field public static final enum END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

.field public static final enum NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

.field public static final enum START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;


# instance fields
.field final _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;
    .locals 4

    .line 34
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    sget-object v2, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    sget-object v3, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->BOTH:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 36
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    const-string v1, "START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 37
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    const-string v1, "END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 38
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    const-string v1, "BOTH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->BOTH:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 34
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->$values()[Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->$VALUES:[Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    const-class v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;
    .locals 1

    .line 34
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->$VALUES:[Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->_value:I

    return v0
.end method
