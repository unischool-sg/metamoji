.class Lcom/metamoji/ui/dialog/DocumentSettings$3;
.super Ljava/lang/Object;
.source "DocumentSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentSettings;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$3;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 217
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$3;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iput-boolean p2, p1, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->coverprint:Z

    return-void
.end method
