.class Lcom/metamoji/mazec/MazecIms$4;
.super Ljava/lang/Object;
.source "MazecIms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/MazecIms;->reloadLanguageResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/MazecIms;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/MazecIms;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1331
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms$4;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1334
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$4;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmLang(Lcom/metamoji/mazec/MazecIms;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecIms;->restoreLanguage(Ljava/lang/String;)Z

    return-void
.end method
