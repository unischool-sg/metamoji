.class Lcom/metamoji/nt/NtSheetInfoView$1$1$1;
.super Ljava/lang/Object;
.source "NtSheetInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSheetInfoView$1$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/nt/NtSheetInfoView$1$1;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtSheetInfoView$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/metamoji/nt/NtSheetInfoView$1$1$1;->this$2:Lcom/metamoji/nt/NtSheetInfoView$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/metamoji/nt/NtSheetInfoView$1$1$1;->this$2:Lcom/metamoji/nt/NtSheetInfoView$1$1;

    iget-object v0, v0, Lcom/metamoji/nt/NtSheetInfoView$1$1;->this$1:Lcom/metamoji/nt/NtSheetInfoView$1;

    iget-object v0, v0, Lcom/metamoji/nt/NtSheetInfoView$1;->this$0:Lcom/metamoji/nt/NtSheetInfoView;

    iget-object v1, p0, Lcom/metamoji/nt/NtSheetInfoView$1$1$1;->this$2:Lcom/metamoji/nt/NtSheetInfoView$1$1;

    iget-object v1, v1, Lcom/metamoji/nt/NtSheetInfoView$1$1;->this$1:Lcom/metamoji/nt/NtSheetInfoView$1;

    iget-object v1, v1, Lcom/metamoji/nt/NtSheetInfoView$1;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtSheetInfoView$1$1$1;->this$2:Lcom/metamoji/nt/NtSheetInfoView$1$1;

    iget-object v2, v2, Lcom/metamoji/nt/NtSheetInfoView$1$1;->this$1:Lcom/metamoji/nt/NtSheetInfoView$1;

    iget-object v2, v2, Lcom/metamoji/nt/NtSheetInfoView$1;->val$docId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/NtSheetInfoView;->-$$Nest$mcreateNoteTemplateInfo(Lcom/metamoji/nt/NtSheetInfoView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
