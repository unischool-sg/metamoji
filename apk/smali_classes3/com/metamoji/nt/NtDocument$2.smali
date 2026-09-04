.class Lcom/metamoji/nt/NtDocument$2;
.super Ljava/lang/Object;
.source "NtDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDocument;->destroy(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtDocument;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1251
    iput-object p1, p0, Lcom/metamoji/nt/NtDocument$2;->this$0:Lcom/metamoji/nt/NtDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1254
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_Error_Save_Note:I

    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_Error_Save_Note_Title:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
