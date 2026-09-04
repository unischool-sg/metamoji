.class abstract Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/MazecView$PopupMenuCreator;
.implements Lcom/metamoji/mazec/ui/MazecView$PopupMenuExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/MazecView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PopupMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method execute()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract execute(I)Z
.end method

.method public execute(Lcom/metamoji/mazec/ui/PopupMenu;)Z
    .locals 0

    .line 111
    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/PopupMenu;->getSelectedLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;->execute(I)Z

    move-result p1

    return p1
.end method
