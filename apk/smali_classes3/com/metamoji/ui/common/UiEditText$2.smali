.class Lcom/metamoji/ui/common/UiEditText$2;
.super Ljava/lang/Object;
.source "UiEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiEditText;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiEditText;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/metamoji/ui/common/UiEditText$2;->this$0:Lcom/metamoji/ui/common/UiEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/metamoji/ui/common/UiEditText$2;->this$0:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->handleClearButton()V

    return-void
.end method
