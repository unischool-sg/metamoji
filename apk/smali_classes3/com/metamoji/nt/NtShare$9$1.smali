.class Lcom/metamoji/nt/NtShare$9$1;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$9;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtShare$9;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtShare$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 631
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$9$1;->this$0:Lcom/metamoji/nt/NtShare$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$9$1;->this$0:Lcom/metamoji/nt/NtShare$9;

    iget-object v0, v0, Lcom/metamoji/nt/NtShare$9;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/metamoji/nt/NtShare$9$1;->this$0:Lcom/metamoji/nt/NtShare$9;

    iget-object v1, v1, Lcom/metamoji/nt/NtShare$9;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtPrintPDF;->print(Landroid/content/Context;Lcom/metamoji/nt/NtDocument;)V

    return-void
.end method
