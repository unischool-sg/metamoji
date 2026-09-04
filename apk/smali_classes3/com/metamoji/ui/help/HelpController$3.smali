.class Lcom/metamoji/ui/help/HelpController$3;
.super Ljava/lang/Object;
.source "HelpController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/help/HelpController;->layout()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/help/HelpController;

.field final synthetic val$fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/help/HelpController;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 584
    iput-object p1, p0, Lcom/metamoji/ui/help/HelpController$3;->this$0:Lcom/metamoji/ui/help/HelpController;

    iput-object p2, p0, Lcom/metamoji/ui/help/HelpController$3;->val$fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 587
    iget-object p1, p0, Lcom/metamoji/ui/help/HelpController$3;->this$0:Lcom/metamoji/ui/help/HelpController;

    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController$3;->val$fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/help/HelpController;->linktap(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    return-void
.end method
