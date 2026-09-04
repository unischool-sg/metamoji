.class public interface abstract Lcom/metamoji/nt/cabinet/user/EntryUserTaskCallBack;
.super Ljava/lang/Object;
.source "EntryUserTaskCallBack.java"


# static fields
.field public static final Key_Mailaddress:Ljava/lang/String; = "mailaddress"

.field public static final Key_Nickname:Ljava/lang/String; = "nickname"

.field public static final Key_Password:Ljava/lang/String; = "password"


# virtual methods
.method public abstract OnClickCancelButton_EntryUserTaskCallBack()V
.end method

.method public abstract OnClickEntryButton_EntryUserTaskCallBack(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract OnDismiss_EntryUserTaskCallBack()V
.end method

.method public abstract OnDone_EntryUserTaskCallBack()V
.end method
