.class Lcom/metamoji/mazec/MazecAlertMessageActivity$4;
.super Ljava/lang/Object;
.source "MazecAlertMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 83
    iput-object p1, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity$4;->this$0:Lcom/metamoji/mazec/MazecAlertMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity$4;->this$0:Lcom/metamoji/mazec/MazecAlertMessageActivity;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecAlertMessageActivity;->finish()V

    return-void
.end method
