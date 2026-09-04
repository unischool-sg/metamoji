.class Lcom/metamoji/mazec/MazecIms$3;
.super Ljava/lang/Object;
.source "MazecIms.java"

# interfaces
.implements Lcom/metamoji/mazec/MazecIms$EventShooter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/MazecIms;->setLanguage(Ljava/lang/String;Z)V
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

    .line 664
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms$3;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shoot(Lcom/metamoji/mazec/MazecEventListener;)V
    .locals 3

    .line 667
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$3;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmLang(Lcom/metamoji/mazec/MazecIms;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms$3;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v2}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmIsLatinLang(Lcom/metamoji/mazec/MazecIms;)Z

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/mazec/MazecEventListener;->onLanguageChanged(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;Z)V

    return-void
.end method
