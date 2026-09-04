.class Lcom/metamoji/ui/TextUnitEdit$PositionListener;
.super Ljava/lang/Object;
.source "TextUnitEdit.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/TextUnitEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field private final MAXIMUM_NUMBER_OF_LISTENERS:I

.field private mNumberOfListeners:I

.field private mPositionListeners:[Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;

.field final synthetic this$0:Lcom/metamoji/ui/TextUnitEdit;


# direct methods
.method private constructor <init>(Lcom/metamoji/ui/TextUnitEdit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1862
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    .line 1865
    iput p1, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->MAXIMUM_NUMBER_OF_LISTENERS:I

    .line 1866
    new-array p1, p1, [Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->mPositionListeners:[Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/ui/TextUnitEdit-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/TextUnitEdit$PositionListener;-><init>(Lcom/metamoji/ui/TextUnitEdit;)V

    return-void
.end method


# virtual methods
.method public addSubscriber(Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;)V
    .locals 4

    .line 1877
    iget v0, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->mNumberOfListeners:I

    if-nez v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1880
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1893
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->mPositionListeners:[Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;

    const/4 v3, 0x6

    if-ge v1, v3, :cond_3

    .line 1885
    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    return-void

    :cond_1
    if-gez v0, :cond_2

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1893
    :cond_3
    aput-object p1, v2, v0

    .line 1895
    iget p1, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->mNumberOfListeners:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->mNumberOfListeners:I

    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 1928
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->mPositionListeners:[Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1930
    invoke-interface {v1}, Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;->updatePosition()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public removeSubscriber(Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 1900
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->mPositionListeners:[Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 1901
    aput-object p1, v1, v0

    .line 1902
    iget p1, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->mNumberOfListeners:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->mNumberOfListeners:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1907
    :cond_1
    :goto_1
    iget p1, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->mNumberOfListeners:I

    if-nez p1, :cond_2

    .line 1908
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 1909
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return-void
.end method
