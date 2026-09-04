.class Lcom/metamoji/un/sound/UnSoundUnit$9;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit;->addTapEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1836
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$9;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tap(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 1839
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$9;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/sound/UnSoundUnit;->onTapped(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method
