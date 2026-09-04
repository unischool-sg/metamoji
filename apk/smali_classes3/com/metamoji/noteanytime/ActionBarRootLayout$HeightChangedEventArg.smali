.class public Lcom/metamoji/noteanytime/ActionBarRootLayout$HeightChangedEventArg;
.super Ljava/lang/Object;
.source "ActionBarRootLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/ActionBarRootLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeightChangedEventArg"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/metamoji/noteanytime/ActionBarRootLayout;


# direct methods
.method public constructor <init>(Lcom/metamoji/noteanytime/ActionBarRootLayout;I)V
    .locals 0
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

    .line 23
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarRootLayout$HeightChangedEventArg;->this$0:Lcom/metamoji/noteanytime/ActionBarRootLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p2, p0, Lcom/metamoji/noteanytime/ActionBarRootLayout$HeightChangedEventArg;->height:I

    return-void
.end method
