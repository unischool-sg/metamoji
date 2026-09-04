.class Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;
.super Lcom/metamoji/mazec/ui/MazecView$Repeater;
.source "MazecView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/MazecView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyRepeater"
.end annotation


# instance fields
.field private keyCode_:I

.field private str_:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;-><init>(Lcom/metamoji/mazec/ui/MazecView;ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 265
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;-><init>(Lcom/metamoji/mazec/ui/MazecView;ILjava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView$Repeater;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 260
    iput p2, p0, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;->keyCode_:I

    .line 261
    iput-object p3, p0, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;->str_:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    .line 269
    invoke-direct {p0, p1, p4}, Lcom/metamoji/mazec/ui/MazecView$Repeater;-><init>(Lcom/metamoji/mazec/ui/MazecView;I)V

    .line 270
    iput p2, p0, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;->keyCode_:I

    .line 271
    iput-object p3, p0, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;->str_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method exec()V
    .locals 4

    .line 275
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 277
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmKeyboardManager(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/KeyboardManager;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;->keyCode_:I

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/KeyboardManager;->keyPress(I)V

    return-void

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;->str_:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v3, 0xb

    .line 279
    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 281
    :cond_1
    iget v1, p0, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;->keyCode_:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
