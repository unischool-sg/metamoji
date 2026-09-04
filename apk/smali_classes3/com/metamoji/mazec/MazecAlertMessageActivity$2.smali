.class Lcom/metamoji/mazec/MazecAlertMessageActivity$2;
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


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/MazecAlertMessageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity$2;->this$0:Lcom/metamoji/mazec/MazecAlertMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 50
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->switchInputMethod()V

    const/4 p2, 0x0

    .line 52
    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/MazecIms;->requestHideSelf(I)V

    return-void
.end method
