.class Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;
.super Ljava/lang/Object;
.source "SystemOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SystemOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupUpStyleStack"
.end annotation


# instance fields
.field private _paddingBottom:I

.field private _paddingLeft:I

.field private _paddingRight:I

.field private _paddingTop:I

.field private _stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/ui/dialog/SystemOption;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/SystemOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 967
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_stack:Ljava/util/List;

    return-void
.end method

.method private initPadding()V
    .locals 2

    .line 997
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SystemOption;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 998
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingLeft:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_paddingLeft:I

    .line 999
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingRight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_paddingRight:I

    .line 1000
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_paddingTop:I

    .line 1001
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingBottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_paddingBottom:I

    return-void
.end method

.method private setBackground(II)V
    .locals 3

    .line 1005
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1006
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1008
    iget p2, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_paddingLeft:I

    iget v0, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_paddingTop:I

    iget v1, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_paddingRight:I

    iget v2, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_paddingBottom:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public apply()V
    .locals 4

    .line 976
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 980
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->initPadding()V

    .line 984
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 985
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->group_background_up:I

    invoke-direct {p0, v1, v0}, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->setBackground(II)V

    return-void

    .line 987
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->group_up_top:I

    invoke-direct {p0, v1, v0}, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->setBackground(II)V

    .line 988
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->_stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_2

    .line 990
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->group_up_mid:I

    invoke-direct {p0, v1, v3}, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->setBackground(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 992
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->group_up_btm:I

    invoke-direct {p0, v3, v0}, Lcom/metamoji/ui/dialog/SystemOption$GroupUpStyleStack;->setBackground(II)V

    return-void
.end method
