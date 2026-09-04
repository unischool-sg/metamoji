.class public Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusChangedEventArg"
.end annotation


# instance fields
.field private _height:I

.field private _hidden:Z

.field final synthetic this$0:Lcom/metamoji/noteanytime/ActionBar;


# direct methods
.method private constructor <init>(Lcom/metamoji/noteanytime/ActionBar;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;->this$0:Lcom/metamoji/noteanytime/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/ActionBar;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 38
    :cond_0
    iput-boolean p2, p0, Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;->_hidden:Z

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;->_height:I

    .line 41
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 43
    iget-boolean p2, p0, Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;->_hidden:Z

    if-eqz p2, :cond_2

    .line 44
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getHover()Lcom/metamoji/ui/CustomHoverSelectorView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/CustomHoverSelectorView;->tinyPalletHide()V

    goto :goto_1

    .line 46
    :cond_2
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getHover()Lcom/metamoji/ui/CustomHoverSelectorView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/CustomHoverSelectorView;->tinyPalletShow()V

    :goto_1
    const/4 p2, 0x1

    .line 48
    invoke-interface {p1, p2}, Lcom/metamoji/nt/INtEditor;->updateSharePallet(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/noteanytime/ActionBar;ZLcom/metamoji/noteanytime/ActionBar-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;-><init>(Lcom/metamoji/noteanytime/ActionBar;Z)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;->_height:I

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;->_hidden:Z

    return v0
.end method
