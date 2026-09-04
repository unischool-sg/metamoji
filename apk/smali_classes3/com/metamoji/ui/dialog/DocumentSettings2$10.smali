.class Lcom/metamoji/ui/dialog/DocumentSettings2$10;
.super Ljava/lang/Object;
.source "DocumentSettings2.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentSettings2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 687
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$10;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 690
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$10;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    move-result-object p1

    iput-boolean p2, p1, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->isIncludeVoiceFile:Z

    return-void
.end method
