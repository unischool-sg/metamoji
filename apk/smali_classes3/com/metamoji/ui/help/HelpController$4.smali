.class Lcom/metamoji/ui/help/HelpController$4;
.super Ljava/lang/Object;
.source "HelpController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/help/HelpController;->delayDisp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/help/HelpController;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/help/HelpController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 945
    iput-object p1, p0, Lcom/metamoji/ui/help/HelpController$4;->this$0:Lcom/metamoji/ui/help/HelpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController$4;->this$0:Lcom/metamoji/ui/help/HelpController;

    invoke-static {v0}, Lcom/metamoji/ui/help/HelpController;->-$$Nest$mdelayDisp(Lcom/metamoji/ui/help/HelpController;)V

    return-void
.end method
