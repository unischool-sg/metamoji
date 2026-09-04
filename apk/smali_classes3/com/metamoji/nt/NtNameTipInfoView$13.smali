.class Lcom/metamoji/nt/NtNameTipInfoView$13;
.super Ljava/lang/Object;
.source "NtNameTipInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNameTipInfoView;->scrollChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNameTipInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNameTipInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 758
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$13;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$13;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNameTipInfoView;->layoutLabels()V

    return-void
.end method
