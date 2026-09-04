.class Lcom/metamoji/nt/NtNameTipLabelInfo$1;
.super Ljava/lang/Object;
.source "NtNameTipLabelInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNameTipLabelInfo;->checkVisibleLayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNameTipLabelInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNameTipLabelInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipLabelInfo$1;->this$0:Lcom/metamoji/nt/NtNameTipLabelInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo$1;->this$0:Lcom/metamoji/nt/NtNameTipLabelInfo;

    invoke-static {v0}, Lcom/metamoji/nt/NtNameTipLabelInfo;->-$$Nest$fget_popupLabel(Lcom/metamoji/nt/NtNameTipLabelInfo;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
