.class Lcom/metamoji/noteanytime/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 780
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$15;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 783
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$15;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$fget_fxmanager(Lcom/metamoji/noteanytime/MainActivity;)Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ATTENTION_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    return-void
.end method
