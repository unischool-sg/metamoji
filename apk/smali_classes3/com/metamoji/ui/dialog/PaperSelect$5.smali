.class Lcom/metamoji/ui/dialog/PaperSelect$5;
.super Ljava/lang/Object;
.source "PaperSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PaperSelect;->onDone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PaperSelect;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PaperSelect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PaperSelect$5;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 200
    sget v0, Lcom/metamoji/noteanytime/R$string;->MESSAGE_NEED_SELECT_PAPER:I

    sget v1, Lcom/metamoji/noteanytime/R$string;->Menu_Paper_Size_Prop:I

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->modalConfirmDialog(II)V

    return-void
.end method
