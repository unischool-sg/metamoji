.class public Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlowLayoutParams"
.end annotation


# static fields
.field private static NO_SPACING:I = -0x1


# instance fields
.field private horizontalSpacing:I

.field private newLine:Z

.field private verticalSpacing:I

.field private x:I

.field private y:I


# direct methods
.method static bridge synthetic -$$Nest$fgethorizontalSpacing(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->horizontalSpacing:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnewLine(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->newLine:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetverticalSpacing(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->verticalSpacing:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetx(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->x:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgety(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->y:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    sget p1, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->NO_SPACING:I

    iput p1, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->horizontalSpacing:I

    .line 25
    iput p1, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->verticalSpacing:I

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->newLine:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    sget v0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->horizontalSpacing:I

    .line 25
    iput v0, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->verticalSpacing:I

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->newLine:Z

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    sget p1, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->NO_SPACING:I

    iput p1, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->horizontalSpacing:I

    .line 25
    iput p1, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->verticalSpacing:I

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->newLine:Z

    return-void
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55
    const-string/jumbo v0, "styleable.FlowLayout_LayoutParams"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResourceIds(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    :try_start_0
    const-string/jumbo p2, "styleable.FlowLayout_LayoutParams_layout_horizontalSpacing"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    sget v0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->NO_SPACING:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->horizontalSpacing:I

    .line 58
    const-string/jumbo p2, "styleable.FlowLayout_LayoutParams_layout_verticalSpacing"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    sget v0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->NO_SPACING:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->verticalSpacing:I

    .line 59
    const-string/jumbo p2, "styleable.FlowLayout_LayoutParams_layout_newLine"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->newLine:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    throw p2
.end method


# virtual methods
.method public horizontalSpacingSpecified()Z
    .locals 2

    .line 42
    iget v0, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->horizontalSpacing:I

    sget v1, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->NO_SPACING:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPosition(II)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->x:I

    .line 51
    iput p2, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->y:I

    return-void
.end method

.method public verticalSpacingSpecified()Z
    .locals 2

    .line 46
    iget v0, p0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->verticalSpacing:I

    sget v1, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->NO_SPACING:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
