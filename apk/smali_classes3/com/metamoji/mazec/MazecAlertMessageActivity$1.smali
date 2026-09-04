.class Lcom/metamoji/mazec/MazecAlertMessageActivity$1;
.super Ljava/lang/Object;
.source "MazecAlertMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/MazecAlertMessageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/MazecAlertMessageActivity;

.field final synthetic val$androidMarketUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/MazecAlertMessageActivity;Ljava/lang/String;)V
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

    .line 33
    iput-object p1, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity$1;->this$0:Lcom/metamoji/mazec/MazecAlertMessageActivity;

    iput-object p2, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity$1;->val$androidMarketUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 37
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity$1;->val$androidMarketUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    iget-object p2, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity$1;->this$0:Lcom/metamoji/mazec/MazecAlertMessageActivity;

    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/MazecAlertMessageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
