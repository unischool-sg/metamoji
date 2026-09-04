.class Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$1;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorderBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$1;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$1;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    invoke-static {p1}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->-$$Nest$mgetListener(Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;)Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$IUnSoundUnitRecorderBarListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$1;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    invoke-static {p1}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->-$$Nest$mgetListener(Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;)Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$IUnSoundUnitRecorderBarListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$IUnSoundUnitRecorderBarListener;->tappedRecordButton()V

    :cond_0
    return-void
.end method
